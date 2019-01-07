.class public final Lgzh;
.super Ljava/lang/Object;
.source "BizErrorModule.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lgzh;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lgzh;->b:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    return-void
.end method
