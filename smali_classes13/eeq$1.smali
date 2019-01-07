.class public final Leeq$1;
.super Ljava/lang/Object;
.source "OAManagerHeaderDelegate.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Leeq;


# direct methods
.method public constructor <init>(Leeq;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leeq;

    .prologue
    .line 133
    iput-object p1, p0, Leeq$1;->b:Leeq;

    iput-object p2, p0, Leeq$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 133
    check-cast p1, Lcry;

    .line 1136
    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1136
    if-eqz v0, :cond_0

    .line 2059
    iget-boolean v0, p1, Lcry;->c:Z

    .line 1136
    if-nez v0, :cond_1

    .line 1137
    :cond_0
    iget-object v0, p0, Leeq$1;->a:[Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v8

    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Leeq$1;->a:[Ljava/lang/String;

    .line 2091
    iget-object v1, p1, Lcry;->g:Ljava/lang/String;

    .line 1139
    aput-object v1, v0, v8

    .line 3075
    iget-object v0, p1, Lcry;->e:Ljava/lang/String;

    .line 1141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1143
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    const/16 v2, 0x78

    const/16 v3, 0x2710

    const/4 v4, 0x1

    .line 1145
    invoke-virtual {v1, v0, v2, v3, v4}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 1147
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1149
    iget-object v1, p0, Leeq$1;->b:Leeq;

    .line 4045
    iget-object v1, v1, Leeq;->c:Landroid/widget/ImageView;

    .line 1149
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1150
    iget-object v1, p0, Leeq$1;->b:Leeq;

    .line 5045
    iget-object v1, v1, Leeq;->c:Landroid/widget/ImageView;

    .line 1150
    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :cond_2
    :goto_1
    iget-object v0, p0, Leeq$1;->b:Leeq;

    .line 6045
    iget-object v0, v0, Leeq;->d:Landroid/widget/TextView;

    .line 6067
    iget-object v1, p1, Lcry;->d:Ljava/lang/String;

    .line 1156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v0, p0, Leeq$1;->b:Leeq;

    .line 7045
    iget-object v0, v0, Leeq;->e:Landroid/view/View;

    .line 1157
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
