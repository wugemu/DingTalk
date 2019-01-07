.class public final Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;
.super Ljava/lang/Object;
.source "FaceIdInitObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5fdfa96103a977f0L


# instance fields
.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public zimId:Ljava/lang/String;
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

.method public static fromIdl(Lcdl;)Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;
    .locals 3
    .param p0, "model"    # Lcdl;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;-><init>()V

    .line 25
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;
    iget-object v1, p0, Lcdl;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 25
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    .line 26
    iget-object v1, p0, Lcdl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;)Lcdl;
    .locals 2
    .param p0, "obj"    # Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;

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
    new-instance v0, Lcdl;

    invoke-direct {v0}, Lcdl;-><init>()V

    .line 37
    .local v0, "model":Lcdl;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdl;->a:Ljava/lang/Integer;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->zimId:Ljava/lang/String;

    iput-object v1, v0, Lcdl;->b:Ljava/lang/String;

    goto :goto_0
.end method
