.class public final Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;
.super Ljava/lang/Object;
.source "GrantResourcesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->a:I

    .line 133
    iput-object p2, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    .line 134
    return-void
.end method
