.class final Lfak$60;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(JLjava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpp;",
        "Lfrv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1889
    .local p2, "x0":Lcma;, "Lcma<Lfrv;>;"
    iput-object p1, p0, Lfak$60;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1889
    check-cast p1, Lfpp;

    .line 3017
    if-nez p1, :cond_0

    .line 3018
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3021
    :cond_0
    new-instance v0, Lfrv;

    invoke-direct {v0}, Lfrv;-><init>()V

    .line 3022
    iget-object v1, p1, Lfpp;->a:Ljava/lang/String;

    iput-object v1, v0, Lfrv;->a:Ljava/lang/String;

    .line 3023
    iget-object v1, p1, Lfpp;->b:Ljava/lang/String;

    iput-object v1, v0, Lfrv;->b:Ljava/lang/String;

    goto :goto_0
.end method
