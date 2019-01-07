.class final Leqh$1;
.super Ljava/lang/Object;
.source "SpaceSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqh;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leqm;

.field final synthetic b:Leqh;


# direct methods
.method constructor <init>(Leqh;Leqm;)V
    .locals 0
    .param p1, "this$0"    # Leqh;

    .prologue
    .line 63
    iput-object p1, p0, Leqh$1;->b:Leqh;

    iput-object p2, p0, Leqh$1;->a:Leqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 1056
    iget-object v0, v2, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    .line 69
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v0, :cond_0

    .line 70
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 71
    invoke-static {}, Leqb;->b()V

    .line 74
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 75
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 76
    .local v8, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Leqh$1;->a:Leqm;

    invoke-virtual {v2}, Leqm;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Leqh$1;->a:Leqm;

    invoke-virtual {v2}, Leqm;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 1068
    iget-wide v4, v2, Leqm;->g:J

    .line 78
    iput-wide v4, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 79
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 2044
    iget-object v2, v2, Leqm;->d:Ljava/lang/String;

    .line 79
    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 2052
    iget-wide v4, v2, Leqm;->e:J

    .line 80
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 2060
    iget-object v2, v2, Leqm;->f:Ljava/lang/String;

    .line 81
    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 2084
    iget-object v2, v2, Leqm;->i:Ljava/lang/String;

    .line 82
    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Leqh$1;->a:Leqm;

    .line 3076
    iget-object v2, v2, Leqm;->h:Ljava/lang/String;

    .line 83
    iput-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    .line 84
    const-string/jumbo v2, "file"

    iget-object v4, p0, Leqh$1;->a:Leqm;

    .line 4076
    iget-object v4, v4, Leqm;->h:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    iget-object v2, p0, Leqh$1;->b:Leqh;

    iget-object v2, v2, Leqh;->b:Landroid/app/Activity;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 93
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.add.search.history"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v7, "intent":Landroid/content/Intent;
    iget-object v2, p0, Leqh$1;->b:Leqh;

    iget-object v2, v2, Leqh;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Leqh$1;->b:Leqh;

    iget-object v2, v2, Leqh;->b:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v7}, Ldq;->a(Landroid/content/Intent;)Z

    .line 96
    return-void

    .line 90
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Leqh$1;->b:Leqh;

    iget-object v2, v2, Leqh;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method
