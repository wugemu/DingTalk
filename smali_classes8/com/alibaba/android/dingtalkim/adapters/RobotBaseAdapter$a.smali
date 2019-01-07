.class public final Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;
.super Ljava/lang/Object;
.source "RobotBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxNumber"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;->a:I

    .line 113
    return-void
.end method
