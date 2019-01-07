.class final Lcom/alibaba/wukong/sync/upstream/g$a;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/sync/upstream/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/alibaba/wukong/sync/upstream/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/wukong/sync/upstream/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/sync/upstream/g;-><init>(B)V

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g$a;->a:Lcom/alibaba/wukong/sync/upstream/g;

    return-void
.end method
