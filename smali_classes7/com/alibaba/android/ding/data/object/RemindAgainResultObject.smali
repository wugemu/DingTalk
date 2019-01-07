.class public Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;
.super Ljava/lang/Object;
.source "RemindAgainResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a97f2c446614044L


# instance fields
.field public nextRemindTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbdx;)Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;
    .locals 4
    .param p0, "model"    # Lbdx;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;-><init>()V

    .line 25
    .local v0, "object":Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;
    iget-object v1, p0, Lbdx;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 25
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;->nextRemindTime:J

    goto :goto_0
.end method
