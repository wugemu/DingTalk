.class public final Lcom/alibaba/android/ding/data/object/CheckInResultObject;
.super Ljava/lang/Object;
.source "CheckInResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;,
        Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->FAILURE:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    iput-object v0, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->f:I

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
