.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 158
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 173
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 168
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 163
    return-void
.end method
