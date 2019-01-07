.class public final Lesr$a;
.super Ljava/lang/Object;
.source "DingSearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field final synthetic c:Lesr;


# direct methods
.method public constructor <init>(Lesr;)V
    .locals 2
    .param p1, "this$0"    # Lesr;

    .prologue
    .line 190
    iput-object p1, p0, Lesr$a;->c:Lesr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lesr$a;->a:Ljava/lang/String;

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lesr$a;->b:J

    return-void
.end method
