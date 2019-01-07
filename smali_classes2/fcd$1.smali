.class public final Lfcd$1;
.super Ljava/lang/Object;
.source "VideoPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lfcd;


# direct methods
.method public constructor <init>(Lfcd;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lfcd;

    .prologue
    .line 82
    iput-object p1, p0, Lfcd$1;->b:Lfcd;

    iput-object p2, p0, Lfcd$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 85
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    iget-object v9, p0, Lfcd$1;->a:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/os/Bundle;)Ldco;

    move-result-object v6

    .line 86
    .local v6, "videoRecordResult":Ldco;
    if-nez v6, :cond_1

    .line 87
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    const-string/jumbo v10, "video record result is null"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v8, p0, Lfcd$1;->b:Lfcd;

    invoke-static {v8}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 92
    iget-object v8, p0, Lfcd$1;->b:Lfcd;

    invoke-static {v8}, Lfcd;->a(Lfcd;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 95
    :cond_2
    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "VideoRecordTemp"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    :cond_3
    iget-object v8, v6, Ldco;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 108
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    const-string/jumbo v10, "videoRecordResult.tempVideoPath is empty"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v8, v6, Ldco;->a:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "tempVideo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 116
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v11, "videoRecordResult.tempVideo is not exists, tempVideoPath="

    aput-object v11, v10, v12

    iget-object v11, v6, Ldco;->a:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-static {v3}, Lfcd;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".mp4"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "videoRecordUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "videoPicUrl":Ljava/lang/String;
    iget-object v8, v6, Ldco;->a:Ljava/lang/String;

    invoke-static {v8, v7}, Lcop;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 127
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v11, "tempVideo delete failed"

    aput-object v11, v10, v12

    iget-object v11, v6, Ldco;->a:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_6
    iget-object v8, v6, Ldco;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v4, Ljava/io/File;

    iget-object v8, v6, Ldco;->b:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "videoPic":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v6, Ldco;->b:Ljava/lang/String;

    invoke-static {v8, v5}, Lcop;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 132
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 133
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v11, "videoPic delete failed"

    aput-object v11, v10, v12

    iget-object v11, v6, Ldco;->a:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_7
    iget-object v8, p0, Lfcd$1;->b:Lfcd;

    invoke-static {v8, v7, v5}, Lfcd;->a(Lfcd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v4    # "videoPic":Ljava/io/File;
    :cond_8
    iget-object v8, p0, Lfcd$1;->b:Lfcd;

    invoke-static {v8, v7, v5}, Lfcd;->a(Lfcd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_9
    const-string/jumbo v8, "Circle"

    const-string/jumbo v9, "CircleTag"

    const-string/jumbo v10, "video record copy file failed"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
