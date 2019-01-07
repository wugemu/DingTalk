.class public Lcom/alibaba/android/ding/data/object/RemindAgainObject;
.super Ljava/lang/Object;
.source "RemindAgainObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final REMIND_TYPE_AGAIN:I = 0x0

.field public static final URGENT_LEVEL_MEETING_ASK_COME:I = 0x2

.field public static final URGENT_LEVEL_TASK_URGE:I = 0x1

.field private static final serialVersionUID:J = -0x5438abcb377eee99L


# instance fields
.field public dingId:J

.field public ignorePrevent:Z

.field public type:I

.field public urgentLevel:I

.field public userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdlModel(Lcom/alibaba/android/ding/data/object/RemindAgainObject;)Lbdw;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/ding/data/object/RemindAgainObject;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lbdw;

    invoke-direct {v0}, Lbdw;-><init>()V

    .line 36
    .local v0, "model":Lbdw;
    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->dingId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbdw;->a:Ljava/lang/Long;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->userIds:Ljava/util/List;

    iput-object v1, v0, Lbdw;->b:Ljava/util/List;

    .line 38
    iget v1, p0, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->urgentLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbdw;->c:Ljava/lang/Integer;

    .line 39
    iget-boolean v1, p0, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->ignorePrevent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lbdw;->d:Ljava/lang/Boolean;

    .line 40
    iget v1, p0, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbdw;->e:Ljava/lang/Integer;

    goto :goto_0
.end method
