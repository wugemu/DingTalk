.class public Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;
.super Ljava/lang/Object;
.source "ArtcResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7c699bb512f5016eL


# instance fields
.field public data:[B

.field public errorMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbuc;)Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;
    .locals 2
    .param p0, "model"    # Lbuc;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;
    iget-object v1, p0, Lbuc;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->success:Z

    .line 28
    iget-object v1, p0, Lbuc;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->errorMsg:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lbuc;->c:[B

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->data:[B

    goto :goto_0
.end method
