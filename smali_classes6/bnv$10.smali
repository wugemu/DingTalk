.class final Lbnv$10;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Landroid/text/SpannableStringBuilder;

.field final synthetic e:Lbnv;


# direct methods
.method constructor <init>(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 1234
    iput-object p1, p0, Lbnv$10;->e:Lbnv;

    iput-object p2, p0, Lbnv$10;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iput-object p3, p0, Lbnv$10;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object p4, p0, Lbnv$10;->c:Ljava/util/List;

    iput-object p5, p0, Lbnv$10;->d:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1234
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 2237
    iget-object v0, p0, Lbnv$10;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->replacedUidContent:Ljava/lang/String;

    .line 2238
    iget-object v0, p0, Lbnv$10;->e:Lbnv;

    iget-object v1, p0, Lbnv$10;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-object v2, p0, Lbnv$10;->c:Ljava/util/List;

    iget-object v3, p0, Lbnv$10;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v4, p0, Lbnv$10;->d:Landroid/text/SpannableStringBuilder;

    invoke-static/range {v0 .. v5}, Lbnv;->a(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;Ljava/util/List;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1234
    return-void
.end method
