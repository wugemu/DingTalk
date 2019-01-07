.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 4077
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->f:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->a:I

    iput p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->b:I

    iput-object p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4080
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4081
    const-string/jumbo v0, "intent_key_select_count"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4082
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4084
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x44c

    if-le v0, v1, :cond_2

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_choose_max_limit"

    .line 5083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4084
    if-eqz v0, :cond_2

    .line 4085
    const-string/jumbo v0, "selectUserListResult"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lffv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4091
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4092
    const-string/jumbo v0, "key_selected_dept_list"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4094
    :cond_1
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4095
    return-object p1

    .line 4087
    :cond_2
    const-string/jumbo v0, "key_selected_user_list"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method
