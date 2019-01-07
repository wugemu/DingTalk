.class final Libi$a$1;
.super Ljava/lang/Object;
.source "GroupNickFetchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libi$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Libi$a;


# direct methods
.method constructor <init>(Libi$a;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Libi$a;

    .prologue
    .line 90
    iput-object p1, p0, Libi$a$1;->c:Libi$a;

    iput-object p2, p0, Libi$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Libi$a$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v0

    iget-object v1, p0, Libi$a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Libi$a$1;->b:Ljava/util/List;

    new-instance v3, Libi$a$1$1;

    invoke-direct {v3, p0}, Libi$a$1$1;-><init>(Libi$a$1;)V

    invoke-virtual {v0, v1, v2, v3}, Liaw;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 109
    return-void
.end method
