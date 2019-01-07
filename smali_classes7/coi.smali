.class public final Lcoi;
.super Ljava/lang/Object;
.source "DingtalkFragmentManager.java"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/support/v4/app/FragmentActivity;

.field private d:Lcn;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "container"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcoi;->a:Ljava/util/HashMap;

    .line 24
    iput-object p1, p0, Lcoi;->c:Landroid/support/v4/app/FragmentActivity;

    .line 25
    iget-object v0, p0, Lcoi;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iput-object v0, p0, Lcoi;->d:Lcn;

    .line 26
    iput p2, p0, Lcoi;->e:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Lcoi;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcoi;->d:Lcn;

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 145
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcoi;->b:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 149
    iget-object v1, p0, Lcoi;->d:Lcn;

    invoke-virtual {v1}, Lcn;->b()Z

    .line 152
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "animation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    iget-object v2, p0, Lcoi;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 55
    iget-object v2, p0, Lcoi;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    :cond_0
    iget-object v2, p0, Lcoi;->d:Lcn;

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 57
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 58
    sget v2, Lcig$a;->push_left_in:I

    sget v3, Lcig$a;->push_left_out:I

    sget v4, Lcig$a;->push_right_out:I

    sget v5, Lcig$a;->push_right_in:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    :cond_1
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    :cond_2
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 64
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    :goto_0
    iput-object p1, p0, Lcoi;->b:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 76
    iget-object v2, p0, Lcoi;->d:Lcn;

    invoke-virtual {v2}, Lcn;->b()Z

    .line 79
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_3
    return-void

    .line 68
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .restart local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_4
    move-object v1, p2

    .line 69
    iget v2, p0, Lcoi;->e:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "animation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    iget-object v2, p0, Lcoi;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 118
    iget-object v2, p0, Lcoi;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_0
    iget-object v2, p0, Lcoi;->d:Lcn;

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 120
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_1

    .line 121
    sget v2, Lcig$a;->push_right_out:I

    sget v3, Lcig$a;->push_right_in:I

    sget v4, Lcig$a;->push_left_in:I

    sget v5, Lcig$a;->push_left_out:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    :cond_1
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 124
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    :goto_0
    iput-object p1, p0, Lcoi;->b:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcoi;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcoi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 134
    iget-object v2, p0, Lcoi;->d:Lcn;

    invoke-virtual {v2}, Lcn;->b()Z

    .line 138
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    return-void

    .line 128
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .restart local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_3
    move-object v1, p2

    .line 129
    iget v2, p0, Lcoi;->e:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
