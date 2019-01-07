.class final Lfzn$1$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzn$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfzn$1;


# direct methods
.method constructor <init>(Lfzn$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfzn$1;

    .prologue
    .line 46
    iput-object p1, p0, Lfzn$1$1;->b:Lfzn$1;

    iput-object p2, p0, Lfzn$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lfzn$1$1$1;

    invoke-direct {v0, p0}, Lfzn$1$1$1;-><init>(Lfzn$1$1;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 68
    return-void
.end method
