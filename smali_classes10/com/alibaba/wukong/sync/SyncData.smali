.class public Lcom/alibaba/wukong/sync/SyncData;
.super Ljava/lang/Object;
.source "SyncData.java"


# instance fields
.field public model:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/alibaba/wukong/sync/SyncData;->type:I

    .line 13
    iput-object p2, p0, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    .line 14
    return-void
.end method
