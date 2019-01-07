.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .prologue
    .line 898
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->a:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/os/Bundle;)Ldco;

    move-result-object v28

    .line 899
    .local v28, "videoRecordResult":Ldco;
    if-nez v28, :cond_1

    .line 900
    const-string/jumbo v2, "im"

    const/4 v6, 0x0

    const-string/jumbo v7, "video record result is null"

    invoke-static {v2, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v13

    .line 904
    .local v13, "cacheDir":Ljava/io/File;
    if-nez v13, :cond_2

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getCacheDir()Ljava/io/File;

    move-result-object v13

    .line 907
    :cond_2
    new-instance v25, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "videoRecordTemp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v25, "dir":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 909
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    .line 912
    :cond_3
    if-eqz v13, :cond_0

    .line 913
    move-object/from16 v0, v28

    iget-object v2, v0, Ldco;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 914
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v28

    iget-object v2, v0, Ldco;->a:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v26, "tempVideo":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "videoRecordTemp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 918
    invoke-static/range {v26 .. v26}, Lddq;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ".mp4"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "videoRecordUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "videoRecordTemp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 921
    .local v12, "videoPicUrl":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 922
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 923
    .local v4, "size":J
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 925
    move-object/from16 v0, v28

    iget-object v2, v0, Ldco;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v28

    iget-object v2, v0, Ldco;->b:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v27, "videoPic":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 926
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    move-object/from16 v0, v28

    iget v6, v0, Ldco;->e:I

    int-to-long v6, v6

    move-object/from16 v0, v28

    iget v8, v0, Ldco;->c:I

    move-object/from16 v0, v28

    iget v9, v0, Ldco;->d:I

    const-wide/32 v10, 0x927c0

    invoke-virtual/range {v2 .. v12}, Ldiz;->a(Ljava/lang/String;JJIIJLjava/lang/String;)Z

    goto/16 :goto_0

    .line 929
    .end local v27    # "videoPic":Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v14, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    move-object/from16 v0, v28

    iget v2, v0, Ldco;->e:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v0, v28

    iget v0, v0, Ldco;->c:I

    move/from16 v20, v0

    move-object/from16 v0, v28

    iget v0, v0, Ldco;->d:I

    move/from16 v21, v0

    const-wide/32 v22, 0x927c0

    const-string/jumbo v24, "https://static.dingtalk.com/media/lALOBxwS-c0CgM0BaA_360_640.png"

    move-object v15, v3

    move-wide/from16 v16, v4

    invoke-virtual/range {v14 .. v24}, Ldiz;->a(Ljava/lang/String;JJIIJLjava/lang/String;)Z

    goto/16 :goto_0

    .line 932
    .end local v4    # "size":J
    :cond_5
    const-string/jumbo v2, "im"

    const/4 v6, 0x0

    const-string/jumbo v7, "video record copy file failed"

    invoke-static {v2, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    .end local v3    # "videoRecordUrl":Ljava/lang/String;
    .end local v12    # "videoPicUrl":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "im"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "videoRecordResult.tempVideo is not exists, tempVideoPath="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v28

    iget-object v9, v0, Ldco;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 939
    .end local v26    # "tempVideo":Ljava/io/File;
    :cond_7
    const-string/jumbo v2, "im"

    const/4 v6, 0x0

    const-string/jumbo v7, "videoRecordResult.tempVideoPath is empty"

    invoke-static {v2, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
