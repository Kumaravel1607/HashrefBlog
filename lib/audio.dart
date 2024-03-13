// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:flutter/material.dart';

// class AudioPlayer extends StatefulWidget {
//   AudioPlayer({Key? key}) : super(key: key);

//   @override
//   State<AudioPlayer> createState() => _AudioPlayerState();
// }

// class _AudioPlayerState extends State<AudioPlayer> {

// String musicUrl = ""; // Insert your music URL
// String thumbnailImgUrl = ""; // Insert your thumbnail URL
// var player = AudioPlayer();
// bool loaded = false;
// bool playing = false;

// void loadMusic() async {
//   await player.setUrl(musicUrl);
//   setState(() {
//     loaded = true;
//   });
// }

// void playMusic() async {
//   setState(() {
//     playing = true;
//   });
//   await player.play();
// }

// void pauseMusic() async {
//   setState(() {
//     playing = false;
//   });
//   await player.pause();
// }

// @override
// void initState() {
//   loadMusic();
//   super.initState();
// }

// @override
// void dispose() {
//   player.dispose();
//   super.dispose();
// }
//   @override
// Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Music Player"),
//       ),
//       body: Column(
//         children: [
//           const Spacer(
//             flex: 2,
//           ),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.network(
//               thumbnailImgUrl,
//               height: 350,
//               width: 350,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: StreamBuilder(
//                 stream: player.positionStream,
//                 builder: (context, snapshot1) {
//                   final Duration duration = loaded
//                       ? snapshot1.data as Duration
//                       : const Duration(seconds: 0);
//                   return StreamBuilder(
//                       stream: player.bufferedPositionStream,
//                       builder: (context, snapshot2) {
//                         final Duration bufferedDuration = loaded
//                             ? snapshot2.data as Duration
//                             : const Duration(seconds: 0);
//                         return SizedBox(
//                           height: 30,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 16),
//                             child: ProgressBar(
//                               progress: duration,
//                               total:
//                                   player.duration ?? const Duration(seconds: 0),
//                               buffered: bufferedDuration,
//                               timeLabelPadding: -1,
//                               timeLabelTextStyle: const TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               progressBarColor: Colors.red,
//                               baseBarColor: Colors.grey[200],
//                               bufferedBarColor: Colors.grey[350],
//                               thumbColor: Colors.red,
//                               onSeek: loaded
//                                   ? (duration) async {
//                                       await player.seek(duration);
//                                     }
//                                   : null,
//                             ),
//                           ),
//                         );
//                       });
//                 }),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               const SizedBox(
//                 width: 10,
//               ),
//               IconButton(
//                   onPressed: loaded
//                       ? () async {
//                           if (player.position.inSeconds >= 10) {
//                             await player.seek(Duration(
//                                 seconds: player.position.inSeconds - 10));
//                           } else {
//                             await player.seek(const Duration(seconds: 0));
//                           }
//                         }
//                       : null,
//                   icon: const Icon(Icons.fast_rewind_rounded)),
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: const BoxDecoration(
//                     shape: BoxShape.circle, color: Colors.red),
//                 child: IconButton(
//                     onPressed: loaded
//                         ? () {
//                             if (playing) {
//                               pauseMusic();
//                             } else {
//                               playMusic();
//                             }
//                           }
//                         : null,
//                     icon: Icon(
//                       playing ? Icons.pause : Icons.play_arrow,
//                       color: Colors.white,
//                     )),
//               ),
//               IconButton(
//                   onPressed: loaded
//                       ? () async {
//                           if (player.position.inSeconds + 10 <=
//                               player.duration!.inSeconds) {
//                             await player.seek(Duration(
//                                 seconds: player.position.inSeconds + 10));
//                           } else {
//                             await player.seek(const Duration(seconds: 0));
//                           }
//                         }
//                       : null,
//                   icon: const Icon(Icons.fast_forward_rounded)),
//               const SizedBox(
//                 width: 10,
//               ),
//             ],
//           ),
//           const Spacer(
//             flex: 2,
//           )
//         ],
//       ),
//     );
//   }

// import 'dart:js';

//import 'dart:html';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
//import 'package:just_audio_background/just_audio_background.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:music_player/screens/commons/player_buttons.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioPlayer _audioPlayer;
  String thumbnailImgUrl =
      "https://assets.thehansindia.com/h-upload/2023/09/06/1378161-salaar.webp";

//  void loadMusic() async {
//   await _audioPlayer.setUrl(musicUrl);
//   setState(() {
//     loaded = true;
//   });
// }
  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer
        .setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.asset('assets/audio/Arivaai-MassTamilan.dev.mp3'),
      AudioSource.asset('assets/audio/Pala-Kadhaiyil-MassTamilan.dev.mp3'),
      AudioSource.asset(
          'assets/audio/Suriyan-Kudaiya-Neetti-MassTamilan.dev.mp3'),
      AudioSource.uri(
        Uri.parse(
            "https://archive.org/download/IGM-V7/IGM%20-%20Vol.%207/25%20Diablo%20-%20Tristram%20%28Blizzard%29.mp3"),
        // tag: MediaItem(
        //   id: '1',
        //   album: "Science Friday",
        //   title: "A Salute To Head-Scratching Science (30 seconds)",
        //   artUri: Uri.parse(
        //       "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        // ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://archive.org/download/igm-v8_202101/IGM%20-%20Vol.%208/15%20Pokemon%20Red%20-%20Cerulean%20City%20%28Game%20Freak%29.mp3"),
        // tag: MediaItem(
        //   id: '2',
        //   album: "Science Friday",
        //   title: "A Salute To Head-Scratching Science (30 seconds)",
        //   artUri: Uri.parse(
        //       "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        // ),
      ),
      AudioSource.uri(
        Uri.parse(
            "https://scummbar.com/mi2/MI1-CD/01%20-%20Opening%20Themes%20-%20Introduction.mp3"),
        // tag: MediaItem(
        //   id: '3',
        //   album: "Science Friday",
        //   title: "A Salute To Head-Scratching Science (30 seconds)",
        //   artUri: Uri.parse(
        //       "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg"),
        // ),
      ),
    ]))
        .catchError((error) {
      // catch load errors: 404, invalid url ...
      print("An error occured $error");
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PlayerButtons(_audioPlayer),
      ),
    );
  }
}

class PlayerButtons extends StatelessWidget {
  PlayerButtons(this._audioPlayer, {Key? key}) : super(key: key);

  final AudioPlayer _audioPlayer;
  bool loaded = false;
// Stream<PositionData> get _positionDataStream =>
//       Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
//           _audioPlayer.positionStream,
//           _audioPlayer.bufferedPositionStream,
//           _audioPlayer.durationStream,
//           (position, bufferedPosition, duration) => PositionData(
//               position, bufferedPosition, duration ?? Duration.zero));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Salaar The Cease Fire",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://assets.thehansindia.com/h-upload/2023/09/06/1378161-salaar.webp',
                height: 350,
                width: 350,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  StreamBuilder(
                      stream: _audioPlayer.positionStream,
                      builder: (context, snapshot) {
                        final Duration duration = loaded
                            ? snapshot.data ?? Duration.zero
                            : Duration.zero;
                        // ? snapshot1.data as Duration
                        // : const Duration(seconds: 0);
                        //final progress = duration?.progress ?? Duration.zero;
                        //final metadata=!.currentSource!.tag as MediaItem;
                        return StreamBuilder(
                            stream: _audioPlayer.bufferedPositionStream,
                            builder: (context, snapshot) {
                              final Duration bufferedDuration = loaded
                                  ? snapshot.data ?? Duration.zero
                                  : Duration.zero;
                              // data as Duration
                              // : const Duration(seconds: 0);
                              return SizedBox(
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: ProgressBar(
                                      progress:
                                          // snapshot1.data ?? Duration.zero,
                                          duration,
                                      total: _audioPlayer.duration ??
                                          Duration.zero,
                                      buffered: bufferedDuration,
                                      timeLabelLocation:
                                          TimeLabelLocation.sides,
                                      timeLabelPadding: -1,
                                      timeLabelTextStyle: const TextStyle(
                                          fontSize: 14, color: Colors.black),
                                      progressBarColor: Colors.red,
                                      baseBarColor: Colors.grey[200],
                                      bufferedBarColor: Colors.grey[350],
                                      thumbColor: Colors.red,
                                      onSeek: (loaded) async {
                                        await _audioPlayer.seek(loaded);
                                      }
                                      // : null,
                                      // onDragUpdate: (details) {
                                      //   debugPrint(
                                      //       '${details.timeStamp}, ${details.localPosition}');
                                      // },
                                      ),
                                ),
                              );
                            });
                      }),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StreamBuilder<bool>(
                        stream: _audioPlayer.shuffleModeEnabledStream,
                        builder: (context, snapshot) {
                          return _shuffleButton(
                              context, snapshot.data ?? false);
                        },
                      ),
                      StreamBuilder<SequenceState?>(
                        stream: _audioPlayer.sequenceStateStream,
                        builder: (_, __) {
                          return _previousButton();
                        },
                      ),
                      StreamBuilder<PlayerState>(
                        stream: _audioPlayer.playerStateStream,
                        builder: (_, snapshot) {
                          final playerState = snapshot.data;
                          return _playPauseButton(playerState);
                        },
                      ),
                      StreamBuilder<SequenceState?>(
                        stream: _audioPlayer.sequenceStateStream,
                        builder: (_, __) {
                          return _nextButton();
                        },
                      ),
                      StreamBuilder<LoopMode>(
                        stream: _audioPlayer.loopModeStream,
                        builder: (context, snapshot) {
                          return _repeatButton(
                              context, snapshot.data ?? LoopMode.off);
                        },
                      ),
                    ],
                  ),
                  _controlButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _controlButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          StreamBuilder(
              stream: _audioPlayer.speedStream,
              builder: (context, snapshot) {
                return Row(
                  children: [
                    Icon(Icons.speed),
                    Slider(
                        min: 1,
                        max: 3,
                        divisions: 3,
                        thumbColor: Colors.red,
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey[200],
                        value: snapshot.data ?? 1,
                        onChanged: (value) async {
                          await _audioPlayer.setSpeed(value);
                        })
                  ],
                );
              }),
          StreamBuilder(
              stream: _audioPlayer.volumeStream,
              builder: (context, snapshot) {
                return Row(
                  children: [
                    Icon(Icons.volume_down),
                    Slider(
                        min: 0,
                        max: 3,
                        divisions: 4,
                        thumbColor: Colors.red,
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey[200],
                        value: snapshot.data ?? 1,
                        onChanged: (value) async {
                          await _audioPlayer.setVolume(value);
                        })
                  ],
                );
              })
        ],
      ),
    );
  }

  _playPauseButton(PlayerState? playerState) {
    final processingState = playerState?.processingState;
    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      return Container(
        margin: EdgeInsets.all(8.0),
        width: 64.0,
        height: 64.0,
        child: CircularProgressIndicator(),
      );
    } else if (_audioPlayer.playing != true) {
      return IconButton(
        icon: Icon(Icons.play_arrow),
        iconSize: 64.0,
        onPressed: _audioPlayer.play,
      );
    } else if (processingState != ProcessingState.completed) {
      return IconButton(
        icon: Icon(Icons.pause),
        iconSize: 64.0,
        onPressed: _audioPlayer.pause,
      );
    } else {
      return IconButton(
        icon: Icon(Icons.replay),
        iconSize: 64.0,
        onPressed: () => _audioPlayer.seek(Duration.zero,
            index: _audioPlayer.effectiveIndices!.first),
      );
    }
  }

  Widget _shuffleButton(BuildContext context, bool isEnabled) {
    return IconButton(
      icon: isEnabled
          ? Icon(Icons.shuffle, color: Theme.of(context).colorScheme.secondary)
          : Icon(Icons.shuffle),
      onPressed: () async {
        final enable = !isEnabled;
        if (enable) {
          await _audioPlayer.shuffle();
        }
        await _audioPlayer.setShuffleModeEnabled(enable);
      },
    );
  }

  Widget _previousButton() {
    return IconButton(
      icon: Icon(Icons.skip_previous),
      onPressed: _audioPlayer.hasPrevious ? _audioPlayer.seekToPrevious : null,
    );
  }

  Widget _nextButton() {
    return IconButton(
      icon: Icon(Icons.skip_next),
      onPressed: _audioPlayer.hasNext ? _audioPlayer.seekToNext : null,
    );
  }

  Widget _repeatButton(BuildContext context, LoopMode loopMode) {
    final icons = [
      Icon(Icons.repeat),
      Icon(Icons.repeat, color: Theme.of(context).colorScheme.secondary),
      Icon(Icons.repeat_one, color: Theme.of(context).colorScheme.secondary),
    ];
    const cycleModes = [
      LoopMode.off,
      LoopMode.all,
      LoopMode.one,
    ];
    final index = cycleModes.indexOf(loopMode);
    return IconButton(
      icon: icons[index],
      onPressed: () {
        _audioPlayer.setLoopMode(
            cycleModes[(cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
      },
    );
  }
}















// // import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// // import 'package:flutter/material.dart';

// // class AudioPlayer extends StatefulWidget {
// //   AudioPlayer({Key? key}) : super(key: key);

// //   @override
// //   State<AudioPlayer> createState() => _AudioPlayerState();
// // }

// // class _AudioPlayerState extends State<AudioPlayer> {

// // String musicUrl = ""; // Insert your music URL
// // String thumbnailImgUrl = ""; // Insert your thumbnail URL
// // var player = AudioPlayer();
// // bool loaded = false;
// // bool playing = false;

// // void loadMusic() async {
// //   await player.setUrl(musicUrl);
// //   setState(() {
// //     loaded = true;
// //   });
// // }

// // void playMusic() async {
// //   setState(() {
// //     playing = true;
// //   });
// //   await player.play();
// // }

// // void pauseMusic() async {
// //   setState(() {
// //     playing = false;
// //   });
// //   await player.pause();
// // }

// // @override
// // void initState() {
// //   loadMusic();
// //   super.initState();
// // }

// // @override
// // void dispose() {
// //   player.dispose();
// //   super.dispose();
// // }
// //   @override
// // Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Music Player"),
// //       ),
// //       body: Column(
// //         children: [
// //           const Spacer(
// //             flex: 2,
// //           ),
// //           ClipRRect(
// //             borderRadius: BorderRadius.circular(8),
// //             child: Image.network(
// //               thumbnailImgUrl,
// //               height: 350,
// //               width: 350,
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           const Spacer(),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8),
// //             child: StreamBuilder(
// //                 stream: player.positionStream,
// //                 builder: (context, snapshot1) {
// //                   final Duration duration = loaded
// //                       ? snapshot1.data as Duration
// //                       : const Duration(seconds: 0);
// //                   return StreamBuilder(
// //                       stream: player.bufferedPositionStream,
// //                       builder: (context, snapshot2) {
// //                         final Duration bufferedDuration = loaded
// //                             ? snapshot2.data as Duration
// //                             : const Duration(seconds: 0);
// //                         return SizedBox(
// //                           height: 30,
// //                           child: Padding(
// //                             padding: const EdgeInsets.symmetric(horizontal: 16),
// //                             child: ProgressBar(
// //                               progress: duration,
// //                               total:
// //                                   player.duration ?? const Duration(seconds: 0),
// //                               buffered: bufferedDuration,
// //                               timeLabelPadding: -1,
// //                               timeLabelTextStyle: const TextStyle(
// //                                   fontSize: 14, color: Colors.black),
// //                               progressBarColor: Colors.red,
// //                               baseBarColor: Colors.grey[200],
// //                               bufferedBarColor: Colors.grey[350],
// //                               thumbColor: Colors.red,
// //                               onSeek: loaded
// //                                   ? (duration) async {
// //                                       await player.seek(duration);
// //                                     }
// //                                   : null,
// //                             ),
// //                           ),
// //                         );
// //                       });
// //                 }),
// //           ),
// //           const SizedBox(
// //             height: 8,
// //           ),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               const SizedBox(
// //                 width: 10,
// //               ),
// //               IconButton(
// //                   onPressed: loaded
// //                       ? () async {
// //                           if (player.position.inSeconds >= 10) {
// //                             await player.seek(Duration(
// //                                 seconds: player.position.inSeconds - 10));
// //                           } else {
// //                             await player.seek(const Duration(seconds: 0));
// //                           }
// //                         }
// //                       : null,
// //                   icon: const Icon(Icons.fast_rewind_rounded)),
// //               Container(
// //                 height: 50,
// //                 width: 50,
// //                 decoration: const BoxDecoration(
// //                     shape: BoxShape.circle, color: Colors.red),
// //                 child: IconButton(
// //                     onPressed: loaded
// //                         ? () {
// //                             if (playing) {
// //                               pauseMusic();
// //                             } else {
// //                               playMusic();
// //                             }
// //                           }
// //                         : null,
// //                     icon: Icon(
// //                       playing ? Icons.pause : Icons.play_arrow,
// //                       color: Colors.white,
// //                     )),
// //               ),
// //               IconButton(
// //                   onPressed: loaded
// //                       ? () async {
// //                           if (player.position.inSeconds + 10 <=
// //                               player.duration!.inSeconds) {
// //                             await player.seek(Duration(
// //                                 seconds: player.position.inSeconds + 10));
// //                           } else {
// //                             await player.seek(const Duration(seconds: 0));
// //                           }
// //                         }
// //                       : null,
// //                   icon: const Icon(Icons.fast_forward_rounded)),
// //               const SizedBox(
// //                 width: 10,
// //               ),
// //             ],
// //           ),
// //           const Spacer(
// //             flex: 2,
// //           )
// //         ],
// //       ),
// //     );
// //   }

// // import 'dart:js';

// //import 'dart:html';

// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:just_audio_background/just_audio_background.dart';
// // import 'package:rxdart/rxdart.dart';
// // import 'package:music_player/screens/commons/player_buttons.dart';

// class Player extends StatefulWidget {
//   @override
//   _PlayerState createState() => _PlayerState();
// }

// class _PlayerState extends State<Player> {
// //   late AudioPlayer _audioPlayer;
// //   String thumbnailImgUrl =
// //       "https://assets.thehansindia.com/h-upload/2023/09/06/1378161-salaar.webp";

// // //  void loadMusic() async {
// // //   await _audioPlayer.setUrl(musicUrl);
// // //   setState(() {
// // //     loaded = true;
// // //   });
// // // }
// //   @override
// //   void initState() {
// //     super.initState();
// //     _audioPlayer = AudioPlayer();

// //     _audioPlayer
// //         .setAudioSource(ConcatenatingAudioSource(children: [
// //       AudioSource.asset('assets/audio/Arivaai-MassTamilan.dev.mp3'),
// //       AudioSource.asset('assets/audio/Pala-Kadhaiyil-MassTamilan.dev.mp3'),
// //       AudioSource.asset(
// //           'assets/audio/Suriyan-Kudaiya-Neetti-MassTamilan.dev.mp3'),
// //     ]))
// //         .catchError((error) {
// //       // catch load errors: 404, invalid url ...
// //       print("An error occured $error");
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _audioPlayer.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: PlayerButtons(_audioPlayer),
// //       ),
// //     );
// //   }
// // }

// // class PlayerButtons extends StatelessWidget {
// //   PlayerButtons(this._audioPlayer, {Key? key}) : super(key: key);

// //   final AudioPlayer _audioPlayer;
// //   bool loaded = false;
// // // Stream<PositionData> get _positionDataStream =>
// // //       Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
// // //           _audioPlayer.positionStream,
// // //           _audioPlayer.bufferedPositionStream,
// // //           _audioPlayer.durationStream,
// // //           (position, bufferedPosition, duration) => PositionData(
// // //               position, bufferedPosition, duration ?? Duration.zero));
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Container(
// //         color: Colors.grey,
// //         child: Column(
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.all(20),
// //               child: Text(
// //                 "Salaar The Cease Fire",
// //                 style: TextStyle(
// //                     fontSize: 30,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white),
// //               ),
// //             ),
// //             const Spacer(
// //               flex: 1,
// //             ),
// //             ClipRRect(
// //               borderRadius: BorderRadius.circular(8),
// //               child: Image.network(
// //                 'https://assets.thehansindia.com/h-upload/2023/09/06/1378161-salaar.webp',
// //                 height: 350,
// //                 width: 350,
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             const Spacer(),
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 8),
// //               child: Column(
// //                 children: [
// //                   StreamBuilder(
// //                       stream: _audioPlayer.positionStream,
// //                       builder: (context, snapshot1) {
// //                         final Duration duration = loaded
// //                             ? snapshot1.data ?? Duration.zero
// //                             : Duration.zero;
// //                         // ? snapshot1.data as Duration
// //                         // : const Duration(seconds: 0);
// //                         //final progress = duration?.progress ?? Duration.zero;
// //                         //final metadata=!.currentSource!.tag as MediaItem;
// //                         return StreamBuilder(
// //                             stream: _audioPlayer.bufferedPositionStream,
// //                             builder: (context, snapshot2) {
// //                               final Duration bufferedDuration = loaded
// //                                   ? snapshot2.data ?? Duration.zero
// //                                   : Duration.zero;
// //                               // data as Duration
// //                               // : const Duration(seconds: 0);
// //                               return SizedBox(
// //                                 height: 30,
// //                                 child: Padding(
// //                                   padding: const EdgeInsets.symmetric(
// //                                       horizontal: 16),
// //                                   child: ProgressBar(
// //                                       progress: snapshot1.data ?? Duration.zero,
// //                                       // duration,
// //                                       total: _audioPlayer.duration ??
// //                                           Duration.zero,
// //                                       buffered: bufferedDuration,
// //                                       timeLabelLocation:
// //                                           TimeLabelLocation.sides,
// //                                       timeLabelPadding: -1,
// //                                       timeLabelTextStyle: const TextStyle(
// //                                           fontSize: 14, color: Colors.black),
// //                                       progressBarColor: Colors.red,
// //                                       baseBarColor: Colors.grey[200],
// //                                       bufferedBarColor: Colors.grey[350],
// //                                       thumbColor: Colors.red,
// //                                       onSeek: (duration) async {
// //                                         await _audioPlayer.seek(duration);
// //                                       }
// //                                       // : null,
// //                                       // onDragUpdate: (details) {
// //                                       //   debugPrint(
// //                                       //       '${details.timeStamp}, ${details.localPosition}');
// //                                       // },
// //                                       ),
// //                                 ),
// //                               );
// //                             });
// //                       }),
// //                 ],
// //               ),
// //             ),
// //             Container(
// //               child: Column(
// //                 children: [
// //                   Row(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       StreamBuilder<bool>(
// //                         stream: _audioPlayer.shuffleModeEnabledStream,
// //                         builder: (context, snapshot) {
// //                           return _shuffleButton(
// //                               context, snapshot.data ?? false);
// //                         },
// //                       ),
// //                       StreamBuilder<SequenceState?>(
// //                         stream: _audioPlayer.sequenceStateStream,
// //                         builder: (_, __) {
// //                           return _previousButton();
// //                         },
// //                       ),
// //                       StreamBuilder<PlayerState>(
// //                         stream: _audioPlayer.playerStateStream,
// //                         builder: (_, snapshot) {
// //                           final playerState = snapshot.data;
// //                           return _playPauseButton(playerState);
// //                         },
// //                       ),
// //                       StreamBuilder<SequenceState?>(
// //                         stream: _audioPlayer.sequenceStateStream,
// //                         builder: (_, __) {
// //                           return _nextButton();
// //                         },
// //                       ),
// //                       StreamBuilder<LoopMode>(
// //                         stream: _audioPlayer.loopModeStream,
// //                         builder: (context, snapshot) {
// //                           return _repeatButton(
// //                               context, snapshot.data ?? LoopMode.off);
// //                         },
// //                       ),
// //                     ],
// //                   ),
// //                   _controlButton(),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _controlButton() {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20),
// //       child: Column(
// //         children: [
// //           StreamBuilder(
// //               stream: _audioPlayer.speedStream,
// //               builder: (context, snapshot1) {
// //                 return Row(
// //                   children: [
// //                     Icon(Icons.speed),
// //                     Slider(
// //                         min: 1,
// //                         max: 3,
// //                         divisions: 3,
// //                         thumbColor: Colors.red,
// //                         activeColor: Colors.red,
// //                         inactiveColor: Colors.grey[200],
// //                         value: snapshot1.data ?? 1,
// //                         onChanged: (value) async {
// //                           await _audioPlayer.setSpeed(value);
// //                         })
// //                   ],
// //                 );
// //               }),
// //           StreamBuilder(
// //               stream: _audioPlayer.volumeStream,
// //               builder: (context, snapshot1) {
// //                 return Row(
// //                   children: [
// //                     Icon(Icons.volume_down),
// //                     Slider(
// //                         min: 0,
// //                         max: 3,
// //                         divisions: 4,
// //                         thumbColor: Colors.red,
// //                         activeColor: Colors.red,
// //                         inactiveColor: Colors.grey[200],
// //                         value: snapshot1.data ?? 1,
// //                         onChanged: (value) async {
// //                           await _audioPlayer.setVolume(value);
// //                         })
// //                   ],
// //                 );
// //               })
// //         ],
// //       ),
// //     );
// //   }

// //   _playPauseButton(PlayerState? playerState) {
// //     final processingState = playerState?.processingState;
// //     if (processingState == ProcessingState.loading ||
// //         processingState == ProcessingState.buffering) {
// //       return Container(
// //         margin: EdgeInsets.all(8.0),
// //         width: 64.0,
// //         height: 64.0,
// //         child: CircularProgressIndicator(),
// //       );
// //     } else if (_audioPlayer.playing != true) {
// //       return IconButton(
// //         icon: Icon(Icons.play_arrow),
// //         iconSize: 64.0,
// //         onPressed: _audioPlayer.play,
// //       );
// //     } else if (processingState != ProcessingState.completed) {
// //       return IconButton(
// //         icon: Icon(Icons.pause),
// //         iconSize: 64.0,
// //         onPressed: _audioPlayer.pause,
// //       );
// //     } else {
// //       return IconButton(
// //         icon: Icon(Icons.replay),
// //         iconSize: 64.0,
// //         onPressed: () => _audioPlayer.seek(Duration.zero,
// //             index: _audioPlayer.effectiveIndices!.first),
// //       );
// //     }
// //   }

// //   Widget _shuffleButton(BuildContext context, bool isEnabled) {
// //     return IconButton(
// //       icon: isEnabled
// //           ? Icon(Icons.shuffle, color: Theme.of(context).colorScheme.secondary)
// //           : Icon(Icons.shuffle),
// //       onPressed: () async {
// //         final enable = !isEnabled;
// //         if (enable) {
// //           await _audioPlayer.shuffle();
// //         }
// //         await _audioPlayer.setShuffleModeEnabled(enable);
// //       },
// //     );
// //   }

// //   Widget _previousButton() {
// //     return IconButton(
// //       icon: Icon(Icons.skip_previous),
// //       onPressed: _audioPlayer.hasPrevious ? _audioPlayer.seekToPrevious : null,
// //     );
// //   }

// //   Widget _nextButton() {
// //     return IconButton(
// //       icon: Icon(Icons.skip_next),
// //       onPressed: _audioPlayer.hasNext ? _audioPlayer.seekToNext : null,
// //     );
// //   }

// //   Widget _repeatButton(BuildContext context, LoopMode loopMode) {
// //     final icons = [
// //       Icon(Icons.repeat),
// //       Icon(Icons.repeat, color: Theme.of(context).colorScheme.secondary),
// //       Icon(Icons.repeat_one, color: Theme.of(context).colorScheme.secondary),
// //     ];
// //     const cycleModes = [
// //       LoopMode.off,
// //       LoopMode.all,
// //       LoopMode.one,
// //     ];
// //     final index = cycleModes.indexOf(loopMode);
// //     return IconButton(
// //       icon: icons[index],
// //       onPressed: () {
// //         _audioPlayer.setLoopMode(
// //             cycleModes[(cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
// //       },
// //     );
// //   }
// // }

// // // audio_video_progress_bar
// // // A progress bar widget to show or change the position of an audio or video stream.

// // // Note: This package does not play audio or video itself. It's just a widget you can use to show the progress of your audio or video player. This widget is easier to connect to a media player than the Flutter Slider widget is. It also supports showing the buffered status for streamed media.

// // // Example
// // // Add the ProgressBar widget to your UI. A static example would look like this:

// // // ProgressBar(
// // //   progress: Duration(milliseconds: 1000),
// // //   buffered: Duration(milliseconds: 2000),
// // //   total: Duration(milliseconds: 5000),
// // //   onSeek: (duration) {
// // //     print('User selected a new time: $duration');
// // //   },
// // // ),
// // // However, you would normally wrap it in a builder widget that is updated by an audio or video player. That might look something like this:

// // // StreamBuilder<DurationState>(
// // //   stream: _durationState,
// // //   builder: (context, snapshot) {
// // //     final durationState = snapshot.data;
// // //     final progress = durationState?.progress ?? Duration.zero;
// // //     final buffered = durationState?.buffered ?? Duration.zero;
// // //     final total = durationState?.total ?? Duration.zero;
// // //     return ProgressBar(
// // //       progress: progress,
// // //       buffered: buffered,
// // //       total: total,
// // //       onSeek: (duration) {
// // //         _player.seek(duration);
// // //       },
// // //     );
// // //   },
// // // ),

// // // ...

// // // class DurationState {
// // //   const DurationState({this.progress, this.buffered, this.total});
// // //   final Duration progress;
// // //   final Duration buffered;
// // //   final Duration total;
// // // }
// // // You can check out the GitHub repo for the full example using the just_audio plugin. There is no requirement to use just_audio or even a StreamBuilder, though. You can use any audio or video player that provides updates about the current play location. Just rebuild the ProgressBar widget with the new Duration states.

// // // You'll probably want to add other buttons like start and pause, but these are not included with this package. They aren't hard to build, though, and you can find an example in the GitHub repo.

// // // Thanks to the just_audio code example for help with the buttons.

// // // Customization
// // // The default colors use the theme's primary color, so changing the theme will also update this widget:

// // // However, you can set your own colors and sizes as well:

// // // ProgressBar(
// // //   progress: progress,
// // //   buffered: buffered,
// // //   total: total,
// // //   progressBarColor: Colors.red,
// // //   baseBarColor: Colors.white.withOpacity(0.24),
// // //   bufferedBarColor: Colors.white.withOpacity(0.24),
// // //   thumbColor: Colors.white,
// // //   barHeight: 3.0,
// // //   thumbRadius: 5.0,
// // //   onSeek: (duration) {
// // //     _player.seek(duration);
// // //   },
// // // );
// // // Which would look like this (if the app has a dark theme):

// // // You can also set the location of the time labels:

// // // ProgressBar(
// // //   ...
// // //   timeLabelLocation: TimeLabelLocation.sides,
// // // );
// // // Now the time labels are displayed on the side:

// // // Notes
// // // If your interested in how this widget was made, check out the article Creating a Flutter widget from scratch.

// // // Please open an issue if you find any bugs.

// // // Use this package as a library
// // // Depend on it
// // // Run this command:

// // // With Flutter:

// // //  $ flutter pub add audio_video_progress_bar
// // // This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

// // // dependencies:
// // //   audio_video_progress_bar: ^1.0.1
// // // Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

// // // Import it
// // // Now in your Dart code, you can use:

// // import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// // //example/lib/main.dart

// // import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// // import 'package:audio_video_progress_bar_example/audio_player_manager.dart';
// // import 'package:flutter/material.dart';
// // import 'package:just_audio/just_audio.dart';

// // /// The basic usage for setting the progress bar state is like this:
// // ///
// // /// ```
// // /// return ProgressBar(
// // ///   progress: currentProgress,
// // ///   buffered: currentBuffered,
// // ///   total: totalDuration,
// // /// );
// // /// ```
// // ///
// // /// This example contains some extra code to ensure that the ProgressBar works
// // /// under various situations. Do a search for "ProgressBar" to find it below.
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return ValueListenableBuilder<ThemeVariation>(
// //       valueListenable: themeNotifier,
// //       builder: (context, value, child) {
// //         return MaterialApp(
// //           theme: ThemeData(
// //               primarySwatch: value.color, brightness: value.brightness),
// //           home: const HomeWidget(),
// //         );
// //       },
// //     );
// //   }
// // }

// // class HomeWidget extends StatefulWidget {
// //   const HomeWidget({Key? key}) : super(key: key);

// //   @override
// //   State<HomeWidget> createState() => _HomeWidgetState();
// // }

// // class _HomeWidgetState extends State<HomeWidget> {
//   //late AudioPlayerManager  _audioPlayer;
//   late AudioPlayer _audioPlayer;
//   // @override
//   // void initState() {
//   //   super.initState();
//   //    _audioPlayer = AudioPlayerManager();
//   //    _audioPlayer.init();

//   //    _audioPlayer
//   //       .setAudioSource(ConcatenatingAudioSource(children: [
//   //     AudioSource.asset('assets/audio/Arivaai-MassTamilan.dev.mp3'),
//   //     AudioSource.asset('assets/audio/Pala-Kadhaiyil-MassTamilan.dev.mp3'),
//   //     AudioSource.asset(
//   //         'assets/audio/Suriyan-Kudaiya-Neetti-MassTamilan.dev.mp3'),
//   //   ]))
//   //       .catchError((error) {
//   //     // catch load errors: 404, invalid url ...
//   //     print("An error occured $error");
//   //   });
//   // }

//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer = AudioPlayer();

//     _audioPlayer
//         .setAudioSource(ConcatenatingAudioSource(children: [
//       AudioSource.asset('assets/audio/Arivaai-MassTamilan.dev.mp3'),
//       AudioSource.asset('assets/audio/Pala-Kadhaiyil-MassTamilan.dev.mp3'),
//       AudioSource.asset(
//           'assets/audio/Suriyan-Kudaiya-Neetti-MassTamilan.dev.mp3'),
//     ]))
//         .catchError((error) {
//       // catch load errors: 404, invalid url ...
//       print("An error occured $error");
//     });
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FullExample(audioPlayerManager: _audioPlayer);
//   }
// }

// var themeNotifier = ValueNotifier<ThemeVariation>(
//   const ThemeVariation(Colors.blue, Brightness.light),
// );

// class ThemeVariation {
//   const ThemeVariation(this.color, this.brightness);
//   final MaterialColor color;
//   final Brightness brightness;
// }

// class FullExample extends StatefulWidget {
//   const FullExample({
//     Key? key,
//     required this.audioPlayerManager,
//   }) : super(key: key);

//   //final AudioPlayerManager audioPlayerManager;
//   final AudioPlayer audioPlayerManager;
//   @override
//   State<FullExample> createState() => _FullExampleState();
// }

// class _FullExampleState extends State<FullExample> {
//   var _isShowingWidgetOutline = false;
//   var _labelLocation = TimeLabelLocation.below;
//   var _labelType = TimeLabelType.totalTime;
//   TextStyle? _labelStyle;
//   var _thumbRadius = 10.0;
//   var _labelPadding = 0.0;
//   var _barHeight = 5.0;
//   var _barCapShape = BarCapShape.round;
//   Color? _baseBarColor;
//   Color? _progressBarColor;
//   Color? _bufferedBarColor;
//   Color? _thumbColor;
//   Color? _thumbGlowColor;
//   var _thumbCanPaintOutsideBar = true;

//   @override
//   void initState() {
//     super.initState();
//     widget.audioPlayerManager;
//   }

//   @override
//   void dispose() {
//     widget.audioPlayerManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView(
//                   children: [
//                     _themeButtons(),
//                     _widgetSizeButtons(),
//                     const SizedBox(height: 20),
//                     const Text(
//                       '------- Labels -------',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     _labelLocationButtons(),
//                     _labelTypeButtons(),
//                     _labelSizeButtons(),
//                     _paddingSizeButtons(),
//                     const SizedBox(height: 20),
//                     const Text(
//                       '------- Bar -------',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     _barColorButtons(),
//                     _barCapShapeButtons(),
//                     _barHeightButtons(),
//                     _thumbSizeButtons(),
//                     _thumbOutsideBarButtons(),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 decoration: _widgetBorder(),
//                 child: _progressBar(),
//               ),
//               const SizedBox(height: 20),
//               _playButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Wrap _themeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('light'),
//         onPressed: () {
//           themeNotifier.value =
//               const ThemeVariation(Colors.blue, Brightness.light);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('dark'),
//         onPressed: () {
//           themeNotifier.value =
//               const ThemeVariation(Colors.blue, Brightness.dark);
//         },
//       ),
//     ]);
//   }

//   Wrap _widgetSizeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('hide widget size'),
//         onPressed: () {
//           setState(() => _isShowingWidgetOutline = false);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('show'),
//         onPressed: () {
//           setState(() => _isShowingWidgetOutline = true);
//         },
//       ),
//     ]);
//   }

//   BoxDecoration _widgetBorder() {
//     return BoxDecoration(
//       border: _isShowingWidgetOutline
//           ? Border.all(color: Colors.red)
//           : Border.all(color: Colors.transparent),
//     );
//   }

//   Wrap _labelLocationButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('below'),
//         onPressed: () {
//           setState(() => _labelLocation = TimeLabelLocation.below);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('above'),
//         onPressed: () {
//           setState(() => _labelLocation = TimeLabelLocation.above);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('sides'),
//         onPressed: () {
//           setState(() => _labelLocation = TimeLabelLocation.sides);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('none'),
//         onPressed: () {
//           setState(() => _labelLocation = TimeLabelLocation.none);
//         },
//       ),
//     ]);
//   }

//   Wrap _labelTypeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('total time'),
//         onPressed: () {
//           setState(() => _labelType = TimeLabelType.totalTime);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('remaining time'),
//         onPressed: () {
//           setState(() => _labelType = TimeLabelType.remainingTime);
//         },
//       ),
//     ]);
//   }

//   Wrap _labelSizeButtons() {
//     final fontColor = Theme.of(context).textTheme.bodyLarge?.color;
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('standard font size'),
//         onPressed: () {
//           setState(() => _labelStyle = null);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('large'),
//         onPressed: () {
//           setState(
//               () => _labelStyle = TextStyle(fontSize: 40, color: fontColor));
//         },
//       ),
//       OutlinedButton(
//         child: const Text('small'),
//         onPressed: () {
//           setState(
//               () => _labelStyle = TextStyle(fontSize: 8, color: fontColor));
//         },
//       ),
//     ]);
//   }

//   Wrap _thumbSizeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('standard thumb radius'),
//         onPressed: () {
//           setState(() => _thumbRadius = 10);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('large'),
//         onPressed: () {
//           setState(() => _thumbRadius = 20);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('small'),
//         onPressed: () {
//           setState(() => _thumbRadius = 5);
//         },
//       ),
//     ]);
//   }

//   Wrap _paddingSizeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('standard padding'),
//         onPressed: () {
//           setState(() => _labelPadding = 0.0);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('10 padding'),
//         onPressed: () {
//           setState(() => _labelPadding = 10);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('-5 padding'),
//         onPressed: () {
//           setState(() => _labelPadding = -5);
//         },
//       ),
//     ]);
//   }

//   Wrap _barHeightButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('standard bar height'),
//         onPressed: () {
//           setState(() => _barHeight = 5.0);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('thin'),
//         onPressed: () {
//           setState(() => _barHeight = 1.0);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('thick'),
//         onPressed: () {
//           setState(() => _barHeight = 20.0);
//         },
//       ),
//     ]);
//   }

//   Wrap _barCapShapeButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('round caps'),
//         onPressed: () {
//           setState(() => _barCapShape = BarCapShape.round);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('square'),
//         onPressed: () {
//           setState(() => _barCapShape = BarCapShape.square);
//         },
//       ),
//     ]);
//   }

//   Wrap _barColorButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('theme colors'),
//         onPressed: () {
//           setState(() {
//             _baseBarColor = null;
//             _progressBarColor = null;
//             _bufferedBarColor = null;
//             _thumbColor = null;
//             _thumbGlowColor = null;
//           });
//         },
//       ),
//       OutlinedButton(
//         child: const Text('custom'),
//         onPressed: () {
//           setState(() {
//             _baseBarColor = Colors.grey.withOpacity(0.2);
//             _progressBarColor = Colors.green;
//             _bufferedBarColor = Colors.grey.withOpacity(0.2);
//             _thumbColor = Colors.purple;
//             _thumbGlowColor = Colors.green.withOpacity(0.3);
//           });
//         },
//       ),
//     ]);
//   }

//   Wrap _thumbOutsideBarButtons() {
//     return Wrap(children: [
//       OutlinedButton(
//         child: const Text('thumb can paint outside bar'),
//         onPressed: () {
//           setState(() => _thumbCanPaintOutsideBar = true);
//         },
//       ),
//       OutlinedButton(
//         child: const Text('false'),
//         onPressed: () {
//           setState(() => _thumbCanPaintOutsideBar = false);
//         },
//       ),
//     ]);
//   }

//   StreamBuilder _progressBar() {
//     return StreamBuilder(
//       //  stream: _audioPlayer.positionStream,
//       stream: widget.audioPlayerManager.positionStream,
//       builder: (context, snapshot) {
//         final durationState = snapshot.data;
//         final progress = durationState?.progress ?? Duration.zero;
//         final buffered = durationState?.buffered ?? Duration.zero;
//         final total = durationState?.total ?? Duration.zero;
//         return ProgressBar(
//           progress: progress,
//           buffered: buffered,
//           total: total,
//           //onSeek: widget.audioPlayerManager.,
//           onDragUpdate: (details) {
//             debugPrint('${details.timeStamp}, ${details.localPosition}');
//           },
//           barHeight: _barHeight,
//           baseBarColor: _baseBarColor,
//           progressBarColor: _progressBarColor,
//           bufferedBarColor: _bufferedBarColor,
//           thumbColor: _thumbColor,
//           thumbGlowColor: _thumbGlowColor,
//           barCapShape: _barCapShape,
//           thumbRadius: _thumbRadius,
//           thumbCanPaintOutsideBar: _thumbCanPaintOutsideBar,
//           timeLabelLocation: _labelLocation,
//           timeLabelType: _labelType,
//           timeLabelTextStyle: _labelStyle,
//           timeLabelPadding: _labelPadding,
//         );
//       },
//     );
//   }

//   StreamBuilder<PlayerState> _playButton() {
//     return StreamBuilder<PlayerState>(
//       stream: widget.audioPlayerManager.playerStateStream,
//       builder: (context, snapshot) {
//         final playerState = snapshot.data;
//         final processingState = playerState?.processingState;
//         final playing = playerState?.playing;
//         if (processingState == ProcessingState.loading ||
//             processingState == ProcessingState.buffering) {
//           return Container(
//             margin: const EdgeInsets.all(8.0),
//             width: 32.0,
//             height: 32.0,
//             child: const CircularProgressIndicator(),
//           );
//         } else if (playing != true) {
//           return IconButton(
//             icon: const Icon(Icons.play_arrow),
//             iconSize: 32.0,
//             onPressed: widget.audioPlayerManager.play,
//           );
//         } else if (processingState != ProcessingState.completed) {
//           return IconButton(
//             icon: const Icon(Icons.pause),
//             iconSize: 32.0,
//             onPressed: widget.audioPlayerManager.pause,
//           );
//         } else {
//           return IconButton(
//             icon: const Icon(Icons.replay),
//             iconSize: 32.0,
//             onPressed: () => widget.audioPlayerManager.seek(Duration.zero),
//           );
//         }
//       },
//     );
//   }
// }
