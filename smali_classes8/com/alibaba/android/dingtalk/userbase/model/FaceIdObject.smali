.class public final Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
.super Ljava/lang/Object;
.source "FaceIdObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5fdfa96103a977f1L


# instance fields
.field public enabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcdm;)Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    .locals 3
    .param p0, "model"    # Lcdm;

    .prologue
    const/4 v2, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;-><init>()V

    .line 25
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    iget-object v1, p0, Lcdm;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 25
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    .line 26
    iget-object v1, p0, Lcdm;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 26
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->type:I

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;)Lcdm;
    .locals 2
    .param p0, "obj"    # Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcdm;

    invoke-direct {v0}, Lcdm;-><init>()V

    .line 37
    .local v0, "model":Lcdm;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdm;->a:Ljava/lang/Boolean;

    .line 38
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdm;->b:Ljava/lang/Integer;

    goto :goto_0
.end method
