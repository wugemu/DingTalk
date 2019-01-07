.class final Lewl$18;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Ljava/util/List;Lewl$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lewl$b;

.field final synthetic c:Lewl;


# direct methods
.method constructor <init>(Lewl;Ljava/util/List;Lewl$b;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1425
    iput-object p1, p0, Lewl$18;->c:Lewl;

    iput-object p2, p0, Lewl$18;->a:Ljava/util/List;

    iput-object p3, p0, Lewl$18;->b:Lewl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lewl$18;->a:Ljava/util/List;

    invoke-static {v0}, Lewl;->a(Ljava/util/List;)V

    .line 1429
    iget-object v0, p0, Lewl$18;->b:Lewl$b;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lewl$18;->b:Lewl$b;

    invoke-interface {v0}, Lewl$b;->a()V

    .line 1432
    :cond_0
    return-void
.end method
