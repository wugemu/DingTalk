.class final Lgac$3;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lgac$b;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lgac;


# direct methods
.method constructor <init>(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
    .locals 0
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 329
    iput-object p1, p0, Lgac$3;->e:Lgac;

    iput-object p2, p0, Lgac$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p3, p0, Lgac$3;->b:Lgac$b;

    iput-boolean p4, p0, Lgac$3;->c:Z

    iput p5, p0, Lgac$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 332
    iget-object v0, p0, Lgac$3;->e:Lgac;

    iget-object v1, p0, Lgac$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lgac$3;->b:Lgac$b;

    iget-boolean v3, p0, Lgac$3;->c:Z

    iget v4, p0, Lgac$3;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lgac;->b(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    .line 333
    return-void
.end method
