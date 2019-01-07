.class public final Lgzq$a;
.super Ljava/lang/Object;
.source "PhotokitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/doraemon/image/memory/PoolFactory;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgzq$a;->b:Landroid/content/Context;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lgzq$a;-><init>(Landroid/content/Context;)V

    return-void
.end method
