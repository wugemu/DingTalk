.class public final Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
.super Ljava/lang/Object;
.source "TeleCodeNumberObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->UrlJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->a:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    .line 21
    return-void
.end method
