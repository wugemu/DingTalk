.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;
.super Ljava/lang/Object;
.source "OrgAuthChangeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x37238e2459e275e9L


# instance fields
.field public count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcel;)Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;
    .locals 4
    .param p0, "model"    # Lcel;

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;-><init>()V

    .line 32
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;
    iget-object v1, p0, Lcel;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->time:J

    .line 33
    iget-object v1, p0, Lcel;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->orgId:J

    .line 34
    iget-object v1, p0, Lcel;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->count:I

    .line 35
    return-object v0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;)Lcel;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;

    .prologue
    .line 39
    new-instance v0, Lcel;

    invoke-direct {v0}, Lcel;-><init>()V

    .line 40
    .local v0, "model":Lcel;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcel;->a:Ljava/lang/Long;

    .line 41
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcel;->b:Ljava/lang/Long;

    .line 42
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAuthChangeObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcel;->c:Ljava/lang/Integer;

    .line 43
    return-object v0
.end method
