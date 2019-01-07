.class final Lall$1;
.super Ljava/lang/Object;
.source "SelfChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lall;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lall;


# direct methods
.method constructor <init>(Lall;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lall$1;->c:Lall;

    iput-object p2, p0, Lall$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lall$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lall$1;->c:Lall;

    iget-object v1, p0, Lall$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lall;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method
