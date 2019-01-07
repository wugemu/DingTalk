.class final Lfhq$1;
.super Ljava/lang/Object;
.source "GrantResourcesAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

.field final synthetic b:Lfhq;


# direct methods
.method constructor <init>(Lfhq;Lcom/alibaba/android/user/model/OrgManagerResourceObject;)V
    .locals 0
    .param p1, "this$0"    # Lfhq;

    .prologue
    .line 150
    iput-object p1, p0, Lfhq$1;->b:Lfhq;

    iput-object p2, p0, Lfhq$1;->a:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lfhq$1;->a:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    iput-boolean p2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    .line 154
    iget-object v0, p0, Lfhq$1;->b:Lfhq;

    invoke-static {v0, p2}, Lfhq;->a(Lfhq;Z)Z

    .line 155
    iget-object v0, p0, Lfhq$1;->b:Lfhq;

    invoke-static {v0}, Lfhq;->a(Lfhq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lfhq$1;->b:Lfhq;

    invoke-static {v0}, Lfhq;->b(Lfhq;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lfhq$1;->b:Lfhq;

    invoke-virtual {v0}, Lfhq;->notifyDataSetChanged()V

    .line 159
    return-void
.end method
