.class public final Lfas$20;
.super Lcmg;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdb;",
        "Lcho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfas;


# direct methods
.method public constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 229
    .local p2, "x0":Lcma;, "Lcma<Lcho;>;"
    iput-object p1, p0, Lfas$20;->a:Lfas;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 229
    check-cast p1, Lcdb;

    .line 2020
    if-nez p1, :cond_0

    .line 2021
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2024
    :cond_0
    new-instance v0, Lcho;

    invoke-direct {v0}, Lcho;-><init>()V

    .line 2026
    iget-object v1, p1, Lcdb;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2026
    iput v1, v0, Lcho;->a:I

    .line 2027
    iget-object v1, p1, Lcdb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcho;->b:Ljava/lang/String;

    goto :goto_0
.end method
