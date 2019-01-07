.class final Liey$d;
.super Landroid/content/BroadcastReceiver;
.source "AVDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method private constructor <init>(Liey;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Liey$d;->a:Liey;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liey;B)V
    .locals 0
    .param p1, "x0"    # Liey;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Liey$d;-><init>(Liey;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 617
    if-nez p2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const/4 v8, 0x0

    .local v8, "isHeadsetConnected":Z
    const/4 v7, 0x0

    .local v7, "isBluetoothConnected":Z
    const/4 v6, 0x0

    .line 621
    .local v6, "isAudioConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 623
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothAdapter.ACTION_STATE_CHANGED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v11, 0x0

    .line 625
    .local v11, "stateChanged":Z
    const-string/jumbo v12, "android.bluetooth.adapter.extra.STATE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 626
    .local v10, "state":I
    packed-switch v10, :pswitch_data_0

    .line 645
    :goto_1
    if-eqz v11, :cond_0

    .line 648
    const/4 v6, 0x0

    move v8, v6

    .line 714
    .end local v8    # "isHeadsetConnected":Z
    .end local v10    # "state":I
    .end local v11    # "stateChanged":Z
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 715
    move v4, v7

    .line 716
    .local v4, "finalBluetoothConnected":Z
    move v5, v8

    .line 717
    .local v5, "finalHeadsetConnected":Z
    move v3, v6

    .line 718
    .local v3, "finalAudioConnected":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Liey$d$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v5, v3}, Liey$d$2;-><init>(Liey$d;ZZZ)V

    const-wide/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 628
    .end local v3    # "finalAudioConnected":Z
    .end local v4    # "finalBluetoothConnected":Z
    .end local v5    # "finalHeadsetConnected":Z
    .restart local v8    # "isHeadsetConnected":Z
    .restart local v10    # "state":I
    .restart local v11    # "stateChanged":Z
    :pswitch_0
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothAdapter.STATE_OFF"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v7, 0x0

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->e(Liey;)V

    .line 631
    const/4 v11, 0x1

    .line 632
    goto :goto_1

    .line 634
    :pswitch_1
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothAdapter.STATE_TURNING_ON"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :pswitch_2
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothAdapter.STATE_ON"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v7, 0x1

    .line 639
    const/4 v11, 0x1

    .line 640
    goto :goto_1

    .line 642
    :pswitch_3
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothAdapter.STATE_TURNING_OFF"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 649
    .end local v10    # "state":I
    .end local v11    # "stateChanged":Z
    :cond_3
    const-string/jumbo v12, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 650
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v11, 0x0

    .line 652
    .restart local v11    # "stateChanged":Z
    const-string/jumbo v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 653
    .restart local v10    # "state":I
    packed-switch v10, :pswitch_data_1

    .line 680
    :goto_3
    if-eqz v11, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->k(Liey;)Z

    move-result v7

    .line 684
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->l(Liey;)Z

    move-result v6

    .line 685
    goto/16 :goto_2

    .line 655
    :pswitch_4
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothProfile.STATE_DISCONNECTED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v8, 0x0

    .line 657
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->e(Liey;)V

    .line 658
    const/4 v11, 0x1

    .line 659
    goto :goto_3

    .line 661
    :pswitch_5
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothProfile.STATE_CONNECTED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v8, 0x1

    .line 663
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 664
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Liey$d$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Liey$d$1;-><init>(Liey$d;)V

    const-wide/16 v14, 0x4b0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    :cond_4
    const/4 v11, 0x1

    .line 672
    goto :goto_3

    .line 674
    :pswitch_6
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothProfile.STATE_CONNECTING"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 677
    :pswitch_7
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "BluetoothProfile.STATE_DISCONNECTING"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 685
    .end local v10    # "state":I
    .end local v11    # "stateChanged":Z
    :cond_5
    const-string/jumbo v12, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 686
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "AudioManager.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v11, 0x0

    .line 688
    .restart local v11    # "stateChanged":Z
    const-string/jumbo v12, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 689
    .local v9, "scoState":I
    packed-switch v9, :pswitch_data_2

    .line 708
    :goto_4
    if-eqz v11, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->k(Liey;)Z

    move-result v7

    .line 712
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-virtual {v12}, Liey;->i()Z

    move-result v8

    goto/16 :goto_2

    .line 691
    :pswitch_8
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "AudioManager.SCO_AUDIO_STATE_CONNECTED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v6, 0x1

    .line 693
    const/4 v11, 0x1

    .line 694
    goto :goto_4

    .line 696
    :pswitch_9
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "AudioManager.SCO_AUDIO_STATE_DISCONNECTED"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const/4 v6, 0x0

    .line 698
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-static {v12}, Liey;->l(Liey;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 700
    move-object/from16 v0, p0

    iget-object v12, v0, Liey$d;->a:Liey;

    invoke-virtual {v12}, Liey;->e()V

    .line 702
    :cond_6
    const/4 v11, 0x1

    .line 703
    goto :goto_4

    .line 705
    :pswitch_a
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "AudioManager.SCO_AUDIO_STATE_CONNECTING"

    invoke-static {v12, v13}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 626
    .line 653
    .line 689
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
