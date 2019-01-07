.class final Lfak$12;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(Lcmg;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmg;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcmg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 855
    iput-object p1, p0, Lfak$12;->d:Lfak;

    iput-object p2, p0, Lfak$12;->a:Lcmg;

    iput-object p3, p0, Lfak$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lfak$12;->c:Ljava/lang/String;

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
    .line 858
    iget-object v0, p0, Lfak$12;->a:Lcmg;

    iget-object v1, p0, Lfak$12;->b:Ljava/lang/String;

    iget-object v2, p0, Lfak$12;->c:Ljava/lang/String;

    .line 1033
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    return-void
.end method
