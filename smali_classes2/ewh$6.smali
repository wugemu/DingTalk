.class final Lewh$6;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewh$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lewh;


# direct methods
.method constructor <init>(Lewh;Lewh$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 920
    iput-object p1, p0, Lewh$6;->d:Lewh;

    iput-object p2, p0, Lewh$6;->a:Lewh$b;

    iput-object p3, p0, Lewh$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lewh$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 923
    iget-object v0, p0, Lewh$6;->a:Lewh$b;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lewh$6;->a:Lewh$b;

    iget-object v1, p0, Lewh$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lewh$6;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lewh$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    return-void
.end method
