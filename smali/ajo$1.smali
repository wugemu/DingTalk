.class public final Lajo$1;
.super Ljava/lang/Object;
.source "MailContactSeacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcma;

.field final synthetic d:Lajo;


# direct methods
.method public constructor <init>(Lajo;Ljava/lang/String;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lajo;

    .prologue
    .line 65
    iput-object p1, p0, Lajo$1;->d:Lajo;

    iput-object p2, p0, Lajo$1;->a:Ljava/lang/String;

    iput p3, p0, Lajo$1;->b:I

    iput-object p4, p0, Lajo$1;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lajo$1;->d:Lajo;

    .line 71
    iget-object v0, p0, Lajo$1;->d:Lajo;

    .line 2030
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lajo$1;->a:Ljava/lang/String;

    iget v2, p0, Lajo$1;->b:I

    iget-object v3, p0, Lajo$1;->c:Lcma;

    invoke-static {v0, v1, v2, v3}, Lajq;->a(Landroid/app/Activity;Ljava/lang/String;ILcma;)V

    .line 72
    return-void
.end method
