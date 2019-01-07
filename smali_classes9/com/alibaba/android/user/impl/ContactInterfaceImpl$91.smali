.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 4126
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;->a:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iput p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4129
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->d()Lfmo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;->a:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    iget v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;->b:I

    invoke-interface {v0, v1, v2}, Lfmo;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)I

    .line 4130
    return-void
.end method
