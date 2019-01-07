.class final Lfgq$a;
.super Ljava/lang/Object;
.source "OrgContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field final synthetic d:Lfgq;


# direct methods
.method private constructor <init>(Lfgq;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lfgq$a;->d:Lfgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfgq;B)V
    .locals 0
    .param p1, "x0"    # Lfgq;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lfgq$a;-><init>(Lfgq;)V

    return-void
.end method
