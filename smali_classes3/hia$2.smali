.class final Lhia$2;
.super Ljava/lang/Object;
.source "HpmConfigDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhia;


# direct methods
.method constructor <init>(Lhia;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhia;

    .prologue
    .line 195
    iput-object p1, p0, Lhia$2;->b:Lhia;

    iput-object p2, p0, Lhia$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lhia$2;->a:Ljava/lang/String;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 199
    return-void
.end method
