.class final Ldfa$2;
.super Ljava/lang/Object;
.source "AbsConfigChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldfa;


# direct methods
.method constructor <init>(Ldfa;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldfa;

    .prologue
    .line 158
    iput-object p1, p0, Ldfa$2;->c:Ldfa;

    iput-object p2, p0, Ldfa$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ldfa$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-object v1, p0, Ldfa$2;->c:Ldfa;

    iget-object v2, p0, Ldfa$2;->a:Ljava/lang/String;

    iget-object v0, p0, Ldfa$2;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v1, v2, v4, v5}, Ldfa;->a(Ldfa;Ljava/lang/String;J)V

    .line 162
    return-void
.end method
