.class final Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;
.super Ljava/lang/Object;
.source "FileDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lelz;->h:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "fileIntent":Landroid/content/Intent;
    const-string/jumbo v5, "file"

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v5, Lelz;->h:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-static {v7}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 107
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    .line 108
    const v5, 0x7f091f2b

    invoke-static {v5}, Lcms;->a(I)V

    .line 129
    .end local v1    # "fileIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v1    # "fileIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v1    # "fileIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    const v5, 0x7f0903c1

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 117
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .restart local v4    # "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/rimet/biz/im/activities/FileDownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 126
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method
