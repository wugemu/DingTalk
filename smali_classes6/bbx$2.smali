.class final Lbbx$2;
.super Ljava/lang/Object;
.source "RequestCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbx;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lbbx;


# direct methods
.method constructor <init>(Lbbx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lbbx;

    .prologue
    .line 57
    .local p0, "this":Lbbx$2;, "Lbbx$2;"
    iput-object p1, p0, Lbbx$2;->d:Lbbx;

    iput-object p2, p0, Lbbx$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbx$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lbbx$2;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    .local p0, "this":Lbbx$2;, "Lbbx$2;"
    iget-object v0, p0, Lbbx$2;->d:Lbbx;

    invoke-static {v0}, Lbbx;->a(Lbbx;)Lcmi;

    move-result-object v0

    iget-object v1, p0, Lbbx$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbx$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lbbx$2;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcmi;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
