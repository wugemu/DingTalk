.class public final Lajq$3;
.super Ljava/lang/Object;
.source "SearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcma;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lajq$3;->a:Ljava/lang/String;

    iput p2, p0, Lajq$3;->b:I

    iput-object p3, p0, Lajq$3;->c:Lcma;

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
    .line 94
    const/4 v0, 0x0

    iget-object v1, p0, Lajq$3;->a:Ljava/lang/String;

    iget v2, p0, Lajq$3;->b:I

    iget-object v3, p0, Lajq$3;->c:Lcma;

    invoke-static {v0, v1, v2, v3}, Lajq;->b(Landroid/app/Activity;Ljava/lang/String;ILcma;)V

    .line 95
    return-void
.end method
