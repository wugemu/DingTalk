.class final Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;
.super Ljava/lang/Object;
.source "CMailBaseSearchFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V

    .line 176
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 191
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V

    .line 186
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
