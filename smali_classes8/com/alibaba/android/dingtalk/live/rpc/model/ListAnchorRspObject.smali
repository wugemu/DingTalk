.class public Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;
.super Ljava/lang/Object;
.source "ListAnchorRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5ffd63fde0bb1c79L


# instance fields
.field public anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;"
        }
    .end annotation
.end field

.field public isEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
