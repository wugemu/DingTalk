.class final Lewl$17;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lewl;


# direct methods
.method constructor <init>(Lewl;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1395
    iput-object p1, p0, Lewl$17;->d:Lewl;

    iput-wide p2, p0, Lewl$17;->a:J

    iput-object p4, p0, Lewl$17;->b:Ljava/lang/String;

    iput-object p5, p0, Lewl$17;->c:Ljava/lang/String;

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
    .line 1398
    iget-wide v0, p0, Lewl$17;->a:J

    iget-object v2, p0, Lewl$17;->b:Ljava/lang/String;

    iget-object v3, p0, Lewl$17;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lewl;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method
