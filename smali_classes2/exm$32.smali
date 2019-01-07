.class final Lexm$32;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2293
    iput-object p1, p0, Lexm$32;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 3
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v2, 0x97f

    const/16 v1, 0x97e

    .line 2296
    if-eqz p1, :cond_0

    iget v0, p1, Lcjo$b;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcjo$b;->b:I

    if-eq v0, v2, :cond_1

    .line 2309
    :cond_0
    :goto_0
    return-void

    .line 2300
    :cond_1
    iget v0, p1, Lcjo$b;->b:I

    if-ne v0, v1, :cond_2

    .line 2301
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    if-eqz v0, :cond_0

    .line 2302
    iget-object v1, p0, Lexm$32;->a:Lexm;

    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    invoke-static {v1, v0}, Lexm;->a(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)V

    goto :goto_0

    .line 2304
    :cond_2
    iget v0, p1, Lcjo$b;->b:I

    if-ne v0, v2, :cond_0

    .line 2305
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    if-eqz v0, :cond_0

    .line 2306
    iget-object v1, p0, Lexm$32;->a:Lexm;

    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-static {v1, v0}, Lexm;->a(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;)V

    goto :goto_0
.end method
