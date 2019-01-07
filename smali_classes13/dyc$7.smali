.class public final Ldyc$7;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldtb;",
        "Ldtc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 340
    .local p2, "x0":Lcma;, "Lcma<Ldtc;>;"
    iput-object p1, p0, Ldyc$7;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    check-cast p1, Ldtb;

    .line 2019
    if-nez p1, :cond_0

    .line 2020
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2023
    :cond_0
    new-instance v0, Ldtc;

    invoke-direct {v0}, Ldtc;-><init>()V

    .line 2024
    iget-object v1, p1, Ldtb;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2024
    iput-wide v2, v0, Ldtc;->a:J

    .line 2025
    iget-object v1, p1, Ldtb;->b:Ljava/lang/String;

    iput-object v1, v0, Ldtc;->b:Ljava/lang/String;

    goto :goto_0
.end method
