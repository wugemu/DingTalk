.class public final Lcvo;
.super Lcvp;
.source "GISToViewHolder.java"


# instance fields
.field private ab:Ldac;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcvp;-><init>(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lcvo;->ab:Ldac;

    iget-boolean v1, p0, Lcvo;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 48
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lctk$g;->chatting_item_to_gis:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcvo;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcvo;->ab:Ldac;

    .line 43
    return-void
.end method
