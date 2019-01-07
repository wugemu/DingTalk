.class final Lbyi$1;
.super Ljava/lang/Object;
.source "LiveDynamicSoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcjn$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcjn$a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lbyi$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyi$1;->b:Lcjn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lbyi$1;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lbyi$1;->b:Lcjn$a;

    invoke-static {v0, v1, v2}, Lbyi;->a(Landroid/app/Activity;ILcjn$a;)V

    .line 43
    return-void
.end method
