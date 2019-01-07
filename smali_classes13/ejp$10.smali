.class final Lejp$10;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

.field final synthetic c:Lejp;


# direct methods
.method constructor <init>(Lejp;Landroid/app/Activity;Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 228
    iput-object p1, p0, Lejp$10;->c:Lejp;

    iput-object p2, p0, Lejp$10;->a:Landroid/app/Activity;

    iput-object p3, p0, Lejp$10;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lejp$10;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lejp$10;->c:Lejp;

    iget-object v1, p0, Lejp$10;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v0, v1}, Lejp;->a(Lejp;Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method
