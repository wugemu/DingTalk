.class final Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$1;
.super Ljava/lang/Object;
.source "CircleAttachmentObject.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;->unzipContents(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 173
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$a;

    check-cast p2, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$a;

    .line 1176
    iget v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$a;->c:I

    .line 1177
    iget v1, p2, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject$a;->c:I

    .line 1178
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 1179
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1182
    :goto_0
    return v0

    .line 1181
    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1182
    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 1183
    :cond_2
    const/4 v0, 0x1

    .line 173
    goto :goto_0
.end method
