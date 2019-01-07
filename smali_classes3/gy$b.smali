.class final Lgy$b;
.super Lgy$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lgy$d;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lgy;)Ljava/lang/Object;
    .locals 2
    .param p1, "compat"    # Lgy;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lgy$b$1;

    invoke-direct {v0, p0, p1}, Lgy$b$1;-><init>(Lgy$b;Lgy;)V

    .line 1041
    new-instance v1, Lgz$1;

    invoke-direct {v1, v0}, Lgz$1;-><init>(Lgz$a;)V

    .line 52
    return-object v1
.end method
