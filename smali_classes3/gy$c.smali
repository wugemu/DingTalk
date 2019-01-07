.class final Lgy$c;
.super Lgy$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lgy$d;-><init>()V

    .line 97
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
    .line 102
    new-instance v0, Lgy$c$1;

    invoke-direct {v0, p0, p1}, Lgy$c$1;-><init>(Lgy$c;Lgy;)V

    .line 1042
    new-instance v1, Lha$1;

    invoke-direct {v1, v0}, Lha$1;-><init>(Lha$a;)V

    .line 102
    return-object v1
.end method
