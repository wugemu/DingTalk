.class final Lftg$3$1;
.super Ljava/lang/Object;
.source "NameCardSharePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lftg$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lftg$3;


# direct methods
.method constructor <init>(Lftg$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lftg$3;

    .prologue
    .line 101
    iput-object p1, p0, Lftg$3$1;->b:Lftg$3;

    iput-object p2, p0, Lftg$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lftg$3$1;->b:Lftg$3;

    iget-object v1, v1, Lftg$3;->c:Lftg;

    .line 1035
    iget-object v1, v1, Lftg;->a:Lfta$a;

    .line 104
    invoke-interface {v1}, Lfta$a;->b()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lftg$3$1;->b:Lftg$3;

    iget-object v2, v2, Lftg$3;->b:Landroid/app/Activity;

    sget v3, Lcig$j;->save_to_phone:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lftg$3$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "toastText":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 107
    return-void
.end method
