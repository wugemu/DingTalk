.class public final Lkkq$a;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lklm;

.field private b:Lklo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lklk;->a:Lklk;

    iput-object v0, p0, Lkkq$a;->a:Lklm;

    .line 73
    sget-object v0, Lklp;->a:Lklp;

    iput-object v0, p0, Lkkq$a;->b:Lklo;

    return-void
.end method


# virtual methods
.method public final a(Lklo;)Lkkq$a;
    .locals 1
    .param p1, "connectionBuilder"    # Lklo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "connectionBuilder cannot be null"

    invoke-static {p1, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lkkq$a;->b:Lklo;

    .line 94
    return-object p0
.end method

.method public final a()Lkkq;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    new-instance v0, Lkkq;

    iget-object v1, p0, Lkkq$a;->a:Lklm;

    iget-object v2, p0, Lkkq$a;->b:Lklo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkkq;-><init>(Lklm;Lklo;B)V

    return-object v0
.end method
