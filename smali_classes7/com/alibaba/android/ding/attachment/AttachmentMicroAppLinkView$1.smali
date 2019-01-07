.class final Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;
.super Ljava/lang/Object;
.source "AttachmentMicroAppLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iput-object p2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 82
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->l:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v6, "^(http|https)://qr.dingtalk.com/page/"

    iget-object v7, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v7, v7, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v7, v7, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lbjk;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    const-string/jumbo v7, "/page/businessConference"

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 90
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 91
    const-string/jumbo v6, "appointId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "reservationId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    .line 93
    .local v4, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v3    # "reservationId":Ljava/lang/String;
    .end local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AttachmentMicroAppLinkView click event failed"

    invoke-static {v6, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string/jumbo v6, "^(http|https)://qr.dingtalk.com/page/"

    iget-object v7, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v7, v7, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v7, v7, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lbjk;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    const-string/jumbo v7, "/page/videoConference"

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 102
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 103
    const-string/jumbo v6, "conferenceId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "confID":Ljava/lang/String;
    const-string/jumbo v6, "isNew"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    .local v0, "beNewVersion":Z
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    .line 106
    .restart local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 108
    .end local v0    # "beNewVersion":Z
    .end local v1    # "confID":Ljava/lang/String;
    .end local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AttachmentMicroAppLinkView click event failed"

    invoke-static {v6, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    iget-object v6, v6, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 115
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/attachment/AttachmentMicroAppLinkView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v5, v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
