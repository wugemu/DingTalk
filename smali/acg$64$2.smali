.class final Lacg$64$2;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$64;


# direct methods
.method constructor <init>(Lacg$64;)V
    .locals 0
    .param p1, "this$0"    # Lacg$64;

    .prologue
    .line 4300
    iput-object p1, p0, Lacg$64$2;->a:Lacg$64;

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
    .line 4303
    iget-object v0, p0, Lacg$64$2;->a:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$64$2;->a:Lacg$64;

    iget-object v1, v1, Lacg$64;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 4304
    return-void
.end method
