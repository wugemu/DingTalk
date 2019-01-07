.class final Lbbp$98;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->b(Lckm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckm$a;

.field final synthetic b:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lckm$a;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 167
    iput-object p1, p0, Lbbp$98;->b:Lbbp;

    iput-object p2, p0, Lbbp$98;->a:Lckm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lbbp$98;->b:Lbbp;

    invoke-static {v0}, Lbbp;->b(Lbbp;)Lbbq;

    move-result-object v0

    iget-object v1, p0, Lbbp$98;->a:Lckm$a;

    .line 1097
    iget-object v0, v0, Lbbq;->d:Lckm;

    invoke-virtual {v0, v1}, Lckm;->b(Lckm$a;)V

    .line 171
    return-void
.end method
