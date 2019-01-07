.class public final Levk;
.super Ljava/lang/Object;
.source "TeleConfProblemObject.java"


# instance fields
.field public a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 27
    iput-object v0, p0, Levk;->b:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Levk;->c:Z

    .line 29
    return-void
.end method
