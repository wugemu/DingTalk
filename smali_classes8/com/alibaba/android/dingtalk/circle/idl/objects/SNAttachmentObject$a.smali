.class public final Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;
.super Ljava/lang/Object;
.source "SNAttachmentObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "sort"    # I
    .param p4, "type"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->a:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->b:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->c:I

    .line 70
    iput p4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->d:I

    .line 71
    return-void
.end method