.class public final Lbbp$32;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckm$a;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lckm$a;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 248
    iput-object p1, p0, Lbbp$32;->b:Lbbp;

    iput-object p2, p0, Lbbp$32;->a:Lckm$a;

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
    .line 251
    iget-object v0, p0, Lbbp$32;->b:Lbbp;

    invoke-static {v0}, Lbbp;->b(Lbbp;)Lbbq;

    move-result-object v0

    iget-object v1, p0, Lbbp$32;->a:Lckm$a;

    .line 1233
    if-eqz v1, :cond_0

    .line 1234
    iget-object v0, v0, Lbbq;->i:Lckm;

    invoke-virtual {v0, v1}, Lckm;->a(Lckm$a;)V

    .line 252
    :cond_0
    return-void
.end method
